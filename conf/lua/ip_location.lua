local ipdetail, err = require("ip_location"):new(ip_address)
if not ipdetail then
    ngx.log(ngx.ERR, err)
    ngx.say(failure(err))
    return
end

local ipLocation, err = ipdetail:locationApiFree()
if not ipLocation then
    ngx.log(ngx.ERR, err)
    ngx.say(failure(err))
    return
end

ngx.say(success(ipLocation))
