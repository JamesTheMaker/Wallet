function hasCurrencies()
    cfg = root.assetJson("/currencies.config")

    for currency, _ in pairs(cfg) do
        if player.currency(currency) > 0 then
            return true
        end
    end

    return false
end

function printCurrencies()
    cfg = root.assetJson("/currencies.config")
    str = "Your wallet contains:\n"

    for currency, _ in pairs(cfg) do
        if player.currency(currency) > 0 then
            str = str .. currency .. ": " .. player.currency(currency) .. "\n"
        end
    end

    return str
end