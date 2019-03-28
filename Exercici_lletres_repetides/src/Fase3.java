import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Fase3 {

    public static void main(String[] args) {
    
    List<Character> name = Arrays.asList('a', 'g', 'u', 's', 't','i','n');
   
    //<char of vowels, and int of times repeated in the list "name">
    Map<Character,Integer> listedName = new HashMap<Character,Integer>();
    listedName.put('a', 1);
    listedName.put('g', 1);
    listedName.put('u', 1);
    listedName.put('s', 1);
    listedName.put('t', 1);
    listedName.put('i', 1);
    listedName.put('n', 1);
    
        System.out.println(listedName);
    
    }
    }