
package com.meetingmanager;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.services.plus.Plus;
import com.google.api.services.plus.model.Person;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PlusSampleServlet extends HttpServlet {

	private static final long serialVersionUID = 1;

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		// Check if we have stored credentials using the Authorization Flow.
		// Note that we only check if there are stored credentials, but not if
		// they are still valid.
		// The user may have revoked authorization, in which case we would need
		// to go through the
		// authorization flow again, which this implementation does not handle.
		GoogleAuthorizationCodeFlow authFlow = Utils.initializeFlow();
		Credential credential = authFlow.loadCredential(Utils.getUserId(req));
		if (credential == null) {
			// If we don't have a token in store, redirect to authorization
			// screen.
			resp.sendRedirect(authFlow.newAuthorizationUrl().setRedirectUri(Utils.getRedirectUri(req)).build());
			return;
		}

		// If we do have stored credentials, build the Plus object using them.
		Plus plus = new Plus.Builder(Utils.HTTP_TRANSPORT, Utils.JSON_FACTORY, credential).setApplicationName("")
				.build();
		// Make the API call
		Person profile = plus.people().get("me").execute();
		
	}
}