# FiveM Text Popup System
A lightweight, framework‑agnostic FiveM resource that adds GTA Online–style **text-only popups** for player notifications. Popups slide in at the top-left of the screen, fade out automatically, and display clean two-line messages such as:

This system uses native GTA feed notifications — **no NUI**, **no images**, **no icons**, and **no performance overhead**.

---

## ⭐ Features
- Clean two-line popup layout (title + message)
- GTA Online feed animation (slide-in + fade-out)
- No NUI required
- No images or icons
- Works with any framework (vCore, QBCore, ESX, standalone)
- Server-side triggers for `/twt`, `/ad`, `/anon`
- Fully customizable titles and messages

---

## 📁 Installation
1. Place the resource folder into your FiveM server’s `resources` directory.
2. Add the resource to your `server.cfg`:

---

## 📜 Client Code (text-only popup)

```lua
-- Simple GTA Online-style text popup (no icons)
function SendTextPopup(title, msg)
    -- Title line
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(title)
    EndTextCommandThefeedPostTicker(false, true)

    -- Message line
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(msg)

    -- No icon, no sender, no subject
    EndTextCommandThefeedPostMessagetext("", "", false, 0, "", "")
    EndTextCommandThefeedPostTicker(false, true)

    -- Optional GTA phone text sound
    PlaySoundFrontend(-1, "Text", "Phone_SoundSet_Default", true)
end

RegisterNetEvent("vchat:textPopup")
AddEventHandler("vchat:textPopup", function(title, msg)
    SendTextPopup(title, msg)
end)

```
----
## 🖥️ Server Commands

```lua
RegisterCommand("twt", function(source, args)
    local msg = table.concat(args, " ")
    if msg == "" then return end
    TriggerClientEvent("vchat:textPopup", source, "Tweet", msg)
end)

RegisterCommand("ad", function(source, args)
    local msg = table.concat(args, " ")
    if msg == "" then return end
    TriggerClientEvent("vchat:textPopup", source, "Advertisement", msg)
end)

RegisterCommand("anon", function(source, args)
    local msg = table.concat(args, " ")
    if msg == "" then return end
    TriggerClientEvent("vchat:textPopup", source, "Anonymous", msg)
end)
```

----

## 🔧 Usage Examples

````lua
Tweet

/twt Selling V8 Turbo @ Postal 668

Advertisement

/ad Burgershot Now Open

Anonymous

/anon Anyone selling?

````

----

## 🎨 Customization
You can easily modify:

* Popup title

* Popup message

* Sound effect

* Trigger commands

* Server broadcast vs. player-only

* Broadcast to all players:

````lua
TriggerClientEvent("vchat:textPopup", source, "Tweet", msg) -- Only Sender

TriggerClientEvent("vchat:textPopup", -1, "Tweet", msg) -- Server Wide ( Best Option )
````

----

## 📌 Why Use This?
Perfect for:

* RP servers needing clean tweet/ad systems

* Servers wanting lightweight notifications

* Framework developers building modular UI systems

* Anyone wanting GTA-style popups without NUI complexity

----

## 📄 License

### MIT License — free to use, modify, and distribute.

----

## 🚀 Future Add-Ons

* Color-coded titles

* Popup queue system

* Global tweet feed

* RP name support

----

## ❤️ Credits

### Developed by S-Dev ( FreshLua )
### Designed for vCore / FiveM RP environments
