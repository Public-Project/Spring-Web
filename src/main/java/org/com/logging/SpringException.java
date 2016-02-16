package org.com.logging;

public class SpringException extends Exception {

	private static final long serialVersionUID = 1L;

	public SpringException(String message) {
		super(message);
	}

	public SpringException(String message, Exception ex) {
		super(message, ex);
	}
}
