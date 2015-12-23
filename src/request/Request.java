package request;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.URL;

import javax.xml.crypto.dsig.XMLObject;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public class Request {

	public String makeHTTPRequestJokeNorris() {
		JSONObject jsonObj = null;
		String joke;
		try {
			URL url = new URL("http://api.icndb.com/jokes/random/");
			BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));
			String strTemp = "";
			while (null != (strTemp = br.readLine())) {
				jsonObj = (JSONObject) new JSONParser().parse(strTemp);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		jsonObj = (JSONObject) jsonObj.get("value");
		joke = (String) jsonObj.get("joke");
		return joke;
	}
	
	public String makeHTTPRequestJokeMomma() {
		JSONObject jsonObj = null;
		String joke;
		try {
			URL url = new URL("http://api.yomomma.info/");
			BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));
			String strTemp = "";
			while (null != (strTemp = br.readLine())) {
				jsonObj = (JSONObject) new JSONParser().parse(strTemp);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		joke = (String)jsonObj.get("joke");
		return joke;
	}
	
	

	public String makeHTTPRequestYesOrNo() {
		JSONObject jsonObj = null;
		String yesOrNo;
		try {
			URL url = new URL("http://yesno.wtf/api/");
			BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));
			String strTemp = "";
			while (null != (strTemp = br.readLine())) {
				jsonObj = (JSONObject) new JSONParser().parse(strTemp);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		yesOrNo = (String) jsonObj.get("image");
		return yesOrNo;
	}

}