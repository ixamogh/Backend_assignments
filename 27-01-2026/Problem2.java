import java.util.*;
public class Problem2 {
    public static void main(String[] args) {
        String[] employees={
            "Amogh", "Rohit", "Suman",
            "Amogh", "Rohit", "Anil",
            "amogh"
        };
        ArrayList<String> ls=new ArrayList<>(Arrays.asList(employees));
        HashSet<String> set=new HashSet<>(ls);
        Iterator<String> it=set.iterator();
        while(it.hasNext()){
            System.out.println(it.next());
        }

        HashMap<String,Integer> map=new HashMap<>();
        for(String str:employees){
            str=str.toLowerCase();
            map.put(str,map.getOrDefault(str,0)+1);
        }
        for(Map.Entry<String,Integer> entry:map.entrySet()){
            System.out.println(entry.getKey()+" : "+entry.getValue());
        }
    }
}