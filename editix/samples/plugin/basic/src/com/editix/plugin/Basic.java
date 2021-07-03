package com.editix.plugin;

import java.awt.event.ActionEvent;

import javax.swing.AbstractAction;
import javax.swing.JOptionPane;

/**
 * Here a very simple basic case that can be included inside EditiX using the
 * Options/Editix Descriptor menu item.
 * @author Alexandre Brillant ( http://www.editix.com ) */
public class Basic extends AbstractAction {

	public void actionPerformed(ActionEvent e) {
		JOptionPane.showMessageDialog( null, "Hello World" );
	}

}
