return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      -- https://github.com/eclipse-jdtls/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
      settings = {
        java = {
          saveActions = {
            organizeImports = true,
            cleanup = true,
          },
          cleanup = {
            actionsOnSave = {
              "addOverride",
              "instanceofPatternMatch",
              "lambdaExpression",
              "switchExpression",
            },
          },
          completion = {
            favoriteStaticMembers = {
              "org.junit.jupiter.api.Assertions.*",
              "org.junit.jupiter.api.Assumptions.*",
              "org.junit.jupiter.api.DynamicContainer.*",
              "org.junit.jupiter.api.DynamicTest.*",
              "org.mockito.Mockito.*",
              "org.mockito.ArgumentMatchers.*",
              "com.github.tomakehurst.wiremock.client.WireMock.*",
            },
          },
          maven = {
            downloadSources = true,
          },
          inlayHints = {
            parameterNames = {
              enabled = "literals",
            },
          },
        },
      },
    },
  },
}
