
# ruby_cache Step
Cache gems

### INPUTS
* `FLOW_ENABLE_CACHE` - 

## EXAMPLE 

```yml
steps:
  - name: ruby_cache
    enable: true
    failure: true
    plugin:
      name: ruby_cache
      inputs:
        - FLOW_ENABLE_CACHE=$FLOW_ENABLE_CACHE
```
