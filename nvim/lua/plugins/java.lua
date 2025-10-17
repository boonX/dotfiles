return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
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
        },
      },
    },
  },
}
