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
  String pichu = noSpaces(onlyLetters(reverse(word.toLowerCase())));
  word = noSpaces(onlyLetters(word.toLowerCase()));

  if(pichu.equals(word)){
    return true;
  }else{
    return false;
  }

}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1;i>=0;i--){
      sNew = sNew + str.substring(i,i+1);
    }
    return sNew;
}
public String onlyLetters(String sString){
  String pac = "";
  for(int i = 0; i<sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      pac+= sString.substring(i,i+1);
    }
  }  
  return pac;
}
public String noSpaces(String sWord){
  String lonk = "";
  for(int i = 0; i<sWord.length();i++){
    if(Character.isLetter(sWord.charAt(i)) == true){
      lonk = lonk + sWord.substring(i,i+1);
    }
  
  }
  return lonk;
}

