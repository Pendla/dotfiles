-- Keeps track of which is the currently active space
activeSpace = 1

-- Keeps track of which is the currently active window within each space
windowCounter = {}

local function switchWindow()
    spaceWindowFilter = hs.window.filter.defaultCurrentSpace
    windowsInSpace = spaceWindowFilter:getWindows(hs.window.filter.sortByCreatedLast)

    if #windowsInSpace <= 1 then
        return
    end

    spaceCounter = windowCounter[activeSpace] or 1
    nextWindow = windowsInSpace[spaceCounter]
    if nextWindow then
        nextWindow:focus()
    end

    if spaceCounter + 1 <= #windowsInSpace then
        windowCounter[activeSpace] = spaceCounter + 1
    else
        windowCounter[activeSpace] = 1
    end
end

local function onSpaceChanged(newSpaceIndex)
    activeSpace = newSpaceIndex
end


hs.spaces.watcher.new(onSpaceChanged):start()

hs.hotkey.bind({'cmd'}, '`', switchWindow)
