for f in sm-*/; do
  if [ -d $f ]; then
    pushd $f
    ./build.sh
    popd
  fi
done
