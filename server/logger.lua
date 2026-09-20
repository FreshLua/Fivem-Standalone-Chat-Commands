Logger = {}

local function log(prefix, msg, color)
    print(("^%s[%s]^7 %s"):format(color, prefix, msg))
end

-- Grey
function Logger.info(msg)
    log("INFO", msg, "8")
end

-- Yellow
function Logger.warn(msg)
    log("WARN", msg, "3")
end

-- Green
function Logger.success(msg)
    log("SUCCESS", msg, "2")
end

-- Red
function Logger.error(msg)
    log("ERROR", msg, "1")
end

-- Optional: startup message
Logger.success("Server Logger Loaded")
