package com.editix.plugin;

import java.awt.event.ActionEvent;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import javax.swing.AbstractAction;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import com.japisoft.editix.plugin.EditiXManager;
import com.japisoft.editix.plugin.EditixDocument;
import com.japisoft.editix.plugin.EditixDocumentModel;

/**
 * Here a very simple plugin counting in each opened document the elements
 * @author Alexandre Brillant (http://www.editix.com)
 */
public class ElementCounter extends AbstractAction {

	private Map<String,Integer> counter = null;
	
	public void actionPerformed( ActionEvent e ) {
		try {
			// Map for counting each element
			counter = new HashMap<String, Integer>();
			EditixDocumentModel model = EditiXManager.getInstance().getDocumentModel();
			// Count for each document
			for ( int i = 0; i < model.getDocumentCount(); i++ ) {
				updateElements( model.getDocument( i ) );
			}
			// Display the result
			Set<Entry<String,Integer>> s = counter.entrySet();
			Iterator<Entry<String,Integer>> it = s.iterator();
			StringBuffer sb = new StringBuffer();
			while ( it.hasNext() ) {
				Entry<String,Integer> entry = it.next();
				if ( sb.length() > 0 )
					sb.append( "\n" );
				sb.append( entry.getKey() + " : " + entry.getValue() );
			}
			EditiXManager.getInstance().info( sb.toString() );
		} catch( Exception exc ) {
			EditiXManager.getInstance().info( "Can't count " + exc.getMessage() );
		}
	}

	/** Count each element */
	private void updateElements( EditixDocument doc ) throws Exception {
		Document dom = doc.getDOMContent();
		if ( dom != null ) {
			NodeList nl = dom.getElementsByTagName( "*" );
			for ( int i = 0; i < nl.getLength(); i++ ) {
				if ( nl.item( i ) instanceof Element ) {
					String name = nl.item( i ).getNodeName();
					if ( counter.containsKey( name ) ) {
						counter.put( name, counter.get( name ) + 1 );
					} else {
						counter.put( name, 1 );
					}
				}
			}
		}
	}
	
}
