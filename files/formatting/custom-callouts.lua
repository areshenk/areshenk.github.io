local function is_callout (tab)
    for index, value in ipairs(tab) do
        if string.find(value, "callout") then
            return true
        end
    end
    return false
end

function Div(div)
  if is_callout(div.classes) then
     quarto.doc.addHtmlDependency({name = "custom-callouts", stylesheets = {"custom-callouts.css"}})
     
     if div.classes:includes("callout-prompt") then
        return quarto.Callout({type = "prompt", content = div.content, title = "Prompt"})
     end
     if div.classes:includes("callout-gptout") then
        return quarto.Callout({type = "gptout", content = div.content, title = "ChatGPT output"})
     end
     if div.classes:includes("callout-theory") then
        return quarto.Callout({type = "theory", content = div.content, 
            title = "Irrelevant theoretical sidenote", collapse = "true"})
     end
  end
end
