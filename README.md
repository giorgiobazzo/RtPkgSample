This example reproduces an issue when debugging projects that use Rumtime Packages on the Win64 platform.

Steps to reproduce the issue:

1 - Open the project group: BPTEST.groupproj;\
2 - Select the debug configuration and the win64 platform for all projects in the group;\
3 - Make a Build;\
4 - In the App.exe project in App.dpr, place a breakpoint on the line: Application.Initialize;\
5 - Press F9, and we will see that the breakpoint was ignored. 

If we repeat the process with the win32 configuration, the breakpoint works correctly;

If in App.dpr we remove the MyUnit unit from uses, which is part of TrPartUnits.bpl, the breakpoint also works correctly even in win64;
