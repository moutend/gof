# Proxy
#
# FlyWeightと似た目的で使えそう。
# http://www.dofactory.com/javascript/proxy-design-pattern

puts = console.log
class Asset
  getAsset: (name) ->
    switch name
      when 'image'
        return 'image sent'
      when 'audio'
        return 'audio sent'
      when 'font'
        return 'font sent'
    return ""

class AssetProxy
  constructor: () ->
    @asset = new Asset
    @cache = {}
  getAsset: (name) ->
    if !@cache[name]?
      @cache[name] = @asset.getAsset name
    else
      puts 'already requested'
  getCount: () ->
    count = 0
    for v of @cache
      count += 1
    return count

asset = new AssetProxy
asset.getAsset 'image'
asset.getAsset 'image'
asset.getAsset 'image'
asset.getAsset 'audio'
asset.getAsset 'audio'
asset.getAsset 'font'
asset.getAsset 'font'

puts asset
puts asset.getCount()
