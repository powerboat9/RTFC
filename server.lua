--Edits term.current

local oldTerm = term.current()
function fix()
    term.redirect(oldTerm)
end

local newTerm = {
    write = function(s)
        oldTerm.write(s)
        sendMSG("write:" .. s)
    end
}
