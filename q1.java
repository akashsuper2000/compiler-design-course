package eval3;

import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.CharStream.*;
import org.antlr.v4.runtime.CommonTokenStream.*;
import org.antlr.v4.runtime.Token.*;

public class q1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			CharStream input = new ANTLRFileStream("C:\\Users\\cb.en.u4cse17105\\eclipse-workspace\\eval3\\src\\eval3\\input.txt");
			helloLexer lexer=new helloLexer(input);
			CommonTokenStream tokenstream=new CommonTokenStream(lexer) ;
			helloParser parser=new helloParser(tokenstream);
			ParseTree tree = parser.main();
//			System.out.println(tree.toStringTree());
		}
		catch(Throwable t) {
			System.out.println("Exception:"+t);
			t.printStackTrace();
		}
	}

}