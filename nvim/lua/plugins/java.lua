return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      -- https://github.com/eclipse-jdtls/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
      settings = {
        java = {
          format = {
            enabled = true,
            settings = {
              url = "/home/fjoe/.config/nvim/formatting/GoogleStyle_BOX_eclipse.xml",
            },
          },
          configuration = {
            runtimes = {
              {
                name = "JavaSE-17",
                path = "/home/fjoe/.sdkman/candidates/java/17.0.11-amzn/",
              },
              {
                name = "JavaSE-21",
                path = "/home/fjoe/.sdkman/candidates/java/21.0.3-amzn/",
              },
              {
                name = "JavaSE-25",
                path = "/home/fjoe/.sdkman/candidates/java/25-amzn/",
              },
            },
          },
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
