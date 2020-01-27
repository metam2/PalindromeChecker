public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String newWord = format(word);
  String rev = format(reverse(word));
  return newWord.equals(rev);
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length() - 1; i >= 0; i--)
    {
      sNew += str.substring(i, i + 1);
    }
    return sNew;
}

//formats a string to have no punctuation marks, capitalization, or spaces
public String format(String str)
{
  String out = new String();
  for (int i = 0; i < str.length(); i++)
  {
    char letter = str.charAt(i);
    if(Character.isLetter(letter))
    {
      out += Character.toLowerCase(letter);
    }
    else
    {
      continue;
    }
  }
  return out;
}


