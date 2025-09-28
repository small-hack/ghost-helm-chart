# Ghost API documentation: https://ghost.org/docs/admin-api/

# url to initialize setup
SETUP_URL="http://127.0.0.1:${port}/ghost/api/v3/admin/authentication/setup/"

# required for api calls to ghost
curl_opts=(
        "--silent"
        "-H" "Content-Type: application/json"
        "-H" "Cache-Control: no-cache"
    )

"setup": [{
    "name": "${GHOST_USERNAME}",
    "email": "${GHOST_EMAIL}",
    "password": "${GHOST_PASSWORD}",
    "blogTitle": "${GHOST_BLOG_TITLE}"
  }]
