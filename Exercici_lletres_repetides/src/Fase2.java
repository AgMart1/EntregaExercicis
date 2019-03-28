import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Fase2 {

    public static void main(String[] args) {
    
    List<Character> charList = Arrays.asList('a', 'g', 'u', 's', 't','i','n','2');
    
    for (int i = 0; i < charList.size(); i++){
        
        if(charList.get(i) == 'a' ||
                charList.get(i) == 'e' || 
                charList.get(i) == 'i' || 
                charList.get(i) == 'o' || 
                charList.get(i) == 'u'){
            
            System.out.println(charList.get(i)+" is a VOWEL");
        
        }else if(Character.isDigit(charList.get(i))){
            System.out.println(charList.get(i)+" is a DIGIT (Names of persons does not contain numbers!)");
        
        }else{System.out.println(charList.get(i)+" is a CONSONANT");
       }
    }}
}