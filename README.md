# Rhino Auth0 Scaffold

A [Rhino](https://appsilon.github.io/rhino/) Shiny application demonstrating Auth0 authentication integration using the [`auth0`](https://curso-r.github.io/auth0/) R package.

[Demo](https://019dbbf9-0e4a-031c-df94-57f428b737b7.share.connect.posit.cloud/)

## Quick Start

1. Fork the repository
2. Set up your Auth0 application at [auth0.com](https://auth0.com/)
3. Configure environment variables
4. Run the app:

```r
options(shiny.port = 8080)
shiny::runApp()
```

Alternatively, deploy to [Posit Connect Cloud](https://connect.posit.cloud/) and check if you are able to use the app with login.

Once you deploy, you will need to get the URL from the `Standalone view` and update the `_auth0.yml` as well as your envvars.

## Auth0 Setup

1. Create a `Regular Web Application` instance at Auth0.
2. In Auth0 Dashboard, add URLs to `Allowed Callback URLs`, `Allowed Web Origins`, and `Allowed Logout URLs`:
   - Local: `http://localhost:8080`
   - Remote: Your Posit Connect Cloud URL (without trailing `/`)
3. In `.Renviron` set:
   - `AUTH0_USER`: Your Auth0 username
   - `AUTH0_KEY`: Client ID from Auth0 app
   - `AUTH0_SECRET`: Client Secret from Auth0 app
4. Update `remote_url` in `_auth0.yml` with your deployment URL
5. Set environment variables on Posit Connect Cloud with the same Auth0 credentials
