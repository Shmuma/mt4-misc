#define WINVER 0x0501
#define _WIN32_WINNT 0x0501
#include <windef.h>
#include <windows.h>
#include <shlobj.h>
#include <shlwapi.h>


void __stdcall test_bug(const wchar_t* first, const wchar_t* second)
{
    OutputDebugStringW(first);
    OutputDebugStringW(second);
}
