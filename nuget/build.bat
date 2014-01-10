@echo off

@echo Building NuGet package
mkdir pkg\lib
mkdir pkg\tools
mkdir pkg\content
mkdir pkg\content\Scripts
mkdir pkg\content\Scripts\CodeMirror
mkdir pkg\content\Scripts\CodeMirror\addon
mkdir pkg\content\Scripts\CodeMirror\keymap
mkdir pkg\content\Scripts\CodeMirror\lib
mkdir pkg\content\Scripts\CodeMirror\mode
mkdir pkg\content\Scripts\CodeMirror\theme

xcopy /E /R /Y ..\addon pkg\content\Scripts\CodeMirror\addon
xcopy /E /R /Y ..\keymap pkg\content\Scripts\CodeMirror\keymap
xcopy /E /R /Y ..\lib pkg\content\Scripts\CodeMirror\lib
xcopy /E /R /Y ..\mode pkg\content\Scripts\CodeMirror\mode
xcopy /E /R /Y ..\theme pkg\content\Scripts\CodeMirror\theme

nuget pack pkg\CodeMirror.NuGet.nuspec

