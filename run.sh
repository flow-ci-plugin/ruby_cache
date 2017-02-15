# ************************************************************
#
# This step will enable/disable cache
#
#   Variables used:
#     $FLOW_ENABLE_CACHE
#     $FLOW_VERSION
#
#   Outputs:
#     $FLOW_ENABLE_CACHE
#
# ************************************************************

if [[ $FLOW_ENABLE_CACHE == 'TRUE' ]]; then
  echo 'start ruby cache'
  FLOW_CACHE_PATH="$CACHE_BASE_URL/$FLOW_VERSION/cache"
  if [[ -d $FLOW_CACHE_PATH ]]; then
    echo "cache exists"
  else
    echo "cache not exists"
    mkdir -p $FLOW_CACHE_PATH
  fi

  cp -R $GEM_HOME/cache/* $FLOW_CACHE_PATH/
  rm -rf $GEM_HOME/cache
  ln -s $FLOW_CACHE_PATH $GEM_HOME
else
  echo 'cache disabled'
fi
