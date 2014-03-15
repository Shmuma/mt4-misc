# DLL arguments bug

If we have a dll routine which accepts two string arguments, call to this routine leads to second argument passed the same pointer as first if the following met:

1. we call dll routine from mql function
2. both arguments for dll are the arguments to mql function

Example dll has function test_bug which sends both it's arguments to debugger (you need DebugView running to see them: http://technet.microsoft.com/en-us/sysinternals/bb896647.aspx)

Script dll_args.mq4 on MT4 build 610 gives result in debugview.png, which is incorrect, as first call to test_bug assigns first argument's value to second argument.
