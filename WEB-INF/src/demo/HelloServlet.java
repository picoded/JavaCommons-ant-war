package demo;

import java.io.PrintWriter;

import picoded.servlet.CorePage;

public class HelloServlet extends CorePage {

	/**
	 * [To be extended by sub class, if needed]
	 * Does the output processing, this is after do(Post/Get/Put/Delete)Request
	 *
	 * Important note: when outputing textual data like HTML/JS/etc. and not raw data,
	 * somehow the protocol requires an ending new line for the output to work properly.
	 * If you are using print() extensively, you may simply do a final println()
	 * at the end to terminate the output correctly.
	 **/
	protected void doRequest(PrintWriter writer) throws Exception {
		writer.println("hello world");
	}
	
}