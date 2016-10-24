// Given a string of numbers, you should replace any number below 5 with
// '0' and any number 5 and above with '1'. Return the resulting string.

using System.Linq;

public class Kata
{
  public static string FakeBin(string x)
  {
    return string.Concat(x.Select(a => a < '5' ? "0" : "1"));
  }
}

// --------------------------------------------------------------------

public class Kata
{
  public static string FakeBin(string x)
  {
    string s1 = string.Empty;
    foreach(var ch in x)
    {
      s1 += ch - '0' < 5 ? "0" : "1";
    }
    return s1;
  }
}
