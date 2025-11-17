# application: explore_assistant {
#   url: "https://localhost:8080/bundle.js"
#   # file: "bundle.js"
#   entitlements: {
#     core_api_methods: ["me", "lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query"]
#     navigation: yes
#     use_embeds: yes
#     use_iframes: yes
#     new_window: yes
#     new_window_external_urls: ["https://developers.generativeai.google/*"]
#     local_storage: yes
#     external_api_urls: ["https://looker-agent-adk-796178598865.us-central1.run.app"]
#   }
# }
# sdgsdgs
application: explore_assistant_external {
  label: "Bexplore Assistant"
  url: "https://localhost:8080/bundle.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
    external_api_urls: [
      "https://asia-southeast1-atomic-matrix-443010-u4.cloudfunctions.net/explore-assistant-api"
    ]
  }
}
