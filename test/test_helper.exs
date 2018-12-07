# Exclude all external tests from running
ExUnit.configure(exclude: [external: true])

ExUnit.start()
