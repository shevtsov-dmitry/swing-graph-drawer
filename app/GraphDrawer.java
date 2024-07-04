package app;

import javax.swing.*;

public class GraphDrawer {
	static void createAndShowGUI() {
		// Create and set up the window.
		JFrame frame = new JFrame("Graph Drawer");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setSize(900, 700);

		// Add new items to pane
		// frame.getContentPane().add();
		JLayer circle = new JLayer<>();
		circle.setSize(100, 100);
		frame.getContentPane().add(circle);

		// frame.pack();
		frame.setVisible(true);
	}

	public static void main(String[] args) {

		javax.swing.SwingUtilities.invokeLater(new Runnable() {
			public void run() {
				createAndShowGUI();
			}

		});

	}
}
