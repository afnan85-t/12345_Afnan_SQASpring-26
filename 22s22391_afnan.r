authenticate_user <- function(username, password, selected_role) {
  valid_user <- "afnan.analyst@jobmarket.org"
  valid_pass <- "SecurePass2026!"
  
  # Structural Component 1: If-Else Structure for Credential Validation
  if (username == valid_user && password == valid_pass) {
    is_authenticated <- TRUE
    print("Credentials successfully verified.")
  } else {
    is_authenticated <- FALSE
    print("Access Denied: Invalid username or password.")
    return("AUTH_FAILED")
  }
  
  # Structural Component 2: Switch Structure for Role-Based Access Control
  if (is_authenticated) {
    access_token <- switch(selected_role,
      "Admin"     = "TOKEN_ADMIN_FULL_ACCESS",
      "Analyst"   = "TOKEN_ANALYST_READ_WRITE",
      "Guest"     = "TOKEN_GUEST_READ_ONLY",
      "UNKNOWN_ROLE_ERROR"
    )
    return(access_token)
  }
}
