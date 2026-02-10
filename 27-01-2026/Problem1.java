import java.io.*;
import java.util.*;

public class Problem1{
    public static void main(String[] args){

        StringBuilder sb=new StringBuilder();

        try{
            BufferedReader br=new BufferedReader(new FileReader("practs.txt"));
            String line;
            while((line=br.readLine())!=null){
                sb.append(line).append(" ");
            }
            br.close();
        }catch(IOException e){
            e.printStackTrace();
        }

        String str=sb.toString().trim().replaceAll("\\s+"," ");

        int countCharacters=str.replace(" ","").length();

        String[] words=str.split(" ");
        int countWords=words.length;

        String[] sentences=str.split("[.!?]");
        int countSentences=sentences.length;

        HashMap<String,Integer> map=new HashMap<>();

        for(String word:words){
            word=word.toLowerCase();
            map.put(word,map.getOrDefault(word,0)+1);
        }

        List<Map.Entry<String,Integer>> ls=new ArrayList<>(map.entrySet());
        ls.sort((a,b)->b.getValue()-a.getValue());

        System.out.println("\nReversed Sentences:");
        for(String s:sentences){
            String[] sWords=s.trim().split(" ");
            StringBuilder result=new StringBuilder();
            for(String w:sWords){
                result.append(new StringBuilder(w).reverse()).append(" ");
            }
            System.out.println(result.toString().trim());
        }

        String s1=new String("Innovatech");
        String s2=new String("Innovatech");

        System.out.println("\nString Comparison:");
        System.out.println("Using == :"+(s1==s2));
        System.out.println("Using equals():"+s1.equals(s2));
        System.out.println("Explanation:== compares reference,equals() compares content");

        System.out.println("\n--- Final Results ---");
        System.out.println("Total Characters(excluding spaces):"+countCharacters);
        System.out.println("Total Words:"+countWords);
        System.out.println("Total Sentences:"+countSentences);

        System.out.println("\nTop 5 Most Frequent Words:");
        for(int i=0;i<Math.min(5,ls.size());i++){
            System.out.println(ls.get(i).getKey()+":"+ls.get(i).getValue());
        }
    }
}
