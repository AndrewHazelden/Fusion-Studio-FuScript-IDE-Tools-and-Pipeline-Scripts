-- Fusion Composite Viewer - v1 2017-09-19 9.51 AM
-- by Andrew Hazelden <andrew@andrewhazelden.com>
-- www.andrewhazelden.com

-- Overview:
-- This script works in Fusion 9.0.1 and allows you to quickly view a syntax highlighted version of the active Fusion composite in a UI Manager based view.

-- Installation:
-- Copy this script to your Fusion 9.0.1+ user preferences "Scripts/Comp/" folder.

-- Usage:
-- Step 1. Save your Fusion composite to disk.
-- Step 2. Select the Script > Fusion Composite Viewer menu item. This will open a copy of the current Fusion composite in a syntax highlighted text view.
-- Step 3. After the "Fusion Composite Viewer" window is open, any time you re-save your Fusion .comp file in Fusion's GUI the contents will be updated automatically in the viewer window.

local ui = fu.UIManager
local disp = bmd.UIDispatcher(ui)

win = disp:AddWindow({
  ID = 'EditWin',
  Geometry = { 0, 0, 800, 1024 },
  WindowTitle = 'Fusion Composite Viewer',
  ui:VGroup{
    ID = "root",
    
    -- Add your GUI elements here:
    ui:HGroup{
    Weight = 1,
    ui:TextEdit{
      ID = 'TextEdit',
      TabStopWidth = 28,
      Font = ui:Font{ Family = 'Droid Sans Mono', StyleName = 'Regular', PixelSize = 12, MonoSpaced = true, StyleStrategy = { ForceIntegerMetrics = true }, ReadOnly = true,},
      LineWrapMode = 'NoWrap',
      AcceptRichText = false,

      -- Use the Fusion hybrid lexer module to add syntax highlighting
      Lexer = 'fusion',}, 
    },  
    
    ui:HGroup{
    Weight = 0.1,
    ui:Button{ID = "Refesh", Text = "Refresh Document",},
    },
    
  },
})

itm = win:GetItems()

-- Add your GUI element based event functions here:

-- Track the Fusion save events
ui:AddNotify("Comp_Save", comp)
ui:AddNotify("Comp_SaveVersion", comp)
ui:AddNotify("Comp_SaveAs", comp)
ui:AddNotify("Comp_SaveCopyAs", comp)
 
-- The window was closed
function win.On.EditWin.Close(ev)
  disp:ExitLoop()
end

-- The "Refresh" button was pressed.
function win.On.Refesh.Clicked(ev)
  print('[Update] Refreshing the view.')
  RefeshDocument()
end

-- The Fusion "Save" command was used
function disp.On.Comp_Save(ev)
  print('[Update] Comp saved. Refreshing the view.')
  RefeshDocument()
end

-- The Fusion "Save Version" command was used
function disp.On.Comp_SaveVersion(ev)
  print('[Update] Comp saved as a new version. Refreshing the view.')
  RefeshDocument()
end

-- The Fusion "Save As" command was used
function disp.On.Comp_SaveAs(ev)
  print('[Update] Comp saved to a new file. Refreshing the view.')
  RefeshDocument()
end

-- The Fusion "Save Copy As" command was used
function disp.On.Comp_SaveCopyAs(ev)
  print('[Update] Comp saved as a copy to a new file. Refreshing the view.')
  RefeshDocument()
end

-- Load the current Fusion composite source contents into the viewer:
function RefeshDocument()
  compFile = comp:GetAttrs().COMPS_FileName
  print('[Viewing File] ', compFile)

  if compFile == nil or compFile == '' then
  itm.TextEdit.PlainText = 'Please save the current Fusion composite to disk before running this script again.'
  return
  else
  -- Read in the active .comp as a file from disk then trim off the final null character from the file
  rawDocument = io.open(compFile, 'r'):read('*all')
  document = rawDocument:sub(1,-2)
  
  -- Print the file contents to the console
  -- print('[Fusion Composite Contents]')
  -- print(document)
  
  -- Update the TextEdit field contents
  itm.TextEdit.PlainText = document
  
  -- Update the window title caption with the filename
  itm.EditWin.WindowTitle = 'Fusion Composite Viewer: ' .. compFile
  end
end


RefeshDocument()

win:Show()
bgcol = { R=0.125, G=0.125, B=0.125, A=1 }
itm.TextEdit.BackgroundColor = bgcol
itm.TextEdit:SetPaletteColor('All', 'Base', bgcol)

disp:RunLoop()
win:Hide()
