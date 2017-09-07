tell application "System Events" to if exists process "Things" then
tell application "Things3"
set todoList to {}
repeat with aToDo in (to dos of list "Today" whose status is equal to (open))
    if class of aToDo is not project then -- it's not a project, feel free to process it end if end repeat
        set aProject to project of aToDo
        set aArea to area of aToDo
        if aProject is not missing value then
            set prefix to "[" & (name of aProject) & "] "
            else
            if aArea is not missing value then
                set prefix to "[" & (name of aArea) & "] "
                else
                set prefix to ""
            end if
        end if
        set end of todoList to (prefix & name of aToDo)
    end if
end repeat
return todoList
end tell
end if
