
package com.meetingmanager;

import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow; 
import com.google.api.client.googleapis.auth.oauth2.GoogleTokenResponse;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PlusSampleAuthCallbackServlet extends HttpServlet {

  private static final long serialVersionUID = 1;

  @Override
  public void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws IOException, ServletException {
    // Note that this implementation does not handle the user denying authorization.
    GoogleAuthorizationCodeFlow authFlow = Utils.initializeFlow();
    // Exchange authorization code for user credentials.
    GoogleTokenResponse tokenResponse = authFlow.newTokenRequest(req.getParameter("code"))
        .setRedirectUri(Utils.getRedirectUri(req)).execute();
    // Save the credentials for this user so we can access them from the main servlet.
    authFlow.createAndStoreCredential(tokenResponse, Utils.getUserId(req));
    resp.sendRedirect(Utils.MAIN_SERVLET_PATH);
  }
}