
# 📦 Install and load necessary packages (run this only once)
install.packages(c("quantmod", "TTR"))  # Install if not already
library(quantmod)
library(TTR)

# 🔍 Step 1: Fetch Stock Data (Example: Apple Inc.)
getSymbols("AAPL", src = "yahoo", from = "2023-01-01", to = Sys.Date())

# 📈 Step 2: Calculate Moving Averages (50-day and 200-day)
AAPL$SMA50 <- SMA(Cl(AAPL), n = 50)     # Short-term (blue)
AAPL$SMA200 <- SMA(Cl(AAPL), n = 200)   # Long-term (red)

# 🎨 Step 3: Visualize Stock Price and Moving Averages
chartSeries(AAPL,
            name = "Apple Stock Price with 50 & 200-day Moving Averages",
            TA = c(addSMA(n = 50, col = "blue"), addSMA(n = 200, col = "red")))

