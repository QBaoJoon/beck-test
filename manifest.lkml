application: explore_assistant {
  label: "Beck'splore Assistant"
  url: "https://localhost:8080/bundle.js"
  # file: "bundle.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query", "me"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
    external_api_urls: ["https://explore-assistant-endpoint-jtc-136420034762.europe-west1.run.app/"]
    # oauth2_urls: ["https://accounts.google.com/o/oauth2/v2/auth"]
  }
}

# application: helloworld-ts {
#   label: "Helloworld (TypeScript)"
#   url: "https://localhost:8080/bundle.js"
#   # file: "bundle.js

#   entitlements: {
#     core_api_methods: ["me"]
#     external_api_urls : [
#       "https://localhost:8080",
#       "https://hello-world-img-92394149830.asia-southeast1.run.app",
#       "https://simple-api-92394149830.asia-southeast1.run.app",
#       ]
#   }
# }
