#!/bin/sh

echo "you could probably just run autoreconf with your favorite flags instead, but whatever..."

olddir=$(pwd)
srcdir=$(dirname "$0")
test -z "${srcdir}" && srcdir=.

(
  cd "${srcdir}" || exit

  gprefix=$(which glibtoolize 2>&1 >/dev/null)
  # shellcheck disable=2181
  if [ $? -eq 0 ]; then
    glibtoolize --copy --force --quiet
  elif test -n "${gprefix}" && test "${gprefix}" -eq 0; then
    glibtoolize --copy --force --install --automake
  else
    libtoolize --force
  fi
  aclocal --force -I m4 --install
  autoheader --force
  automake --add-missing --copy --force-missing
  autoconf --force

  cd "${olddir}" || exit
)

if [ -z "${NOCONFIGURE}" ]; then
  # shellcheck disable=2086
  ${srcdir}/configure "$@" || stat "${srcdir}"/configure
fi

echo "Done configuring."
