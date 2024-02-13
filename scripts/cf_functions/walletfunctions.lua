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

    for currency, dat in pairs(cfg) do
        if dat.representativeItem then
            name = root.itemConfig(dat.representativeItem).config.shortdescription
        else
            name = currency
        end
        hidden = dat.sail_hidden

        if player.currency(currency) > 0 and not hidden then
            str = str .. name .. ": " .. player.currency(currency) .. "\n"
        end
    end

    return str
end