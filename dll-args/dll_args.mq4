#property strict

#import "test.dll"
void test_bug(string first, string second);
#import


int OnInit()
{
    return INIT_SUCCEEDED;
}


void OnDeinit()
{
}


void do_test_bug(string first, string second)
{
    // this call passed first argument in both args in dll
    test_bug(first, second);
    // but this works ok
    test_bug(first, second + "");
    // this also works
    test_bug("no_bug", "expected");
}

void OnStart()
{
    string first = "first argument", second = "second argument";

    do_test_bug(first, second);
}
