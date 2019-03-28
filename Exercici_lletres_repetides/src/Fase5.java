import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Fase5 {

    public static void main(String[] args) {
    
    List<Character> name = Arrays.asList('a', 'g', 'u', 's', 't','i','n');
    List<Character> surname = Arrays.asList('m','a','r','t','i','n','e','z');
    List<Character> fullName = new ArrayList<Character>(name);
    fullName.addAll(surname);
    fullName.add(7, ' ');
    System.out.println(fullName);
        
    }
    }