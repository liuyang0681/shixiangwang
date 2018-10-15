
# Z Curve -----------------------------------------------------------------

zcurve = function(string = NULL, n = NULL){
    strs = stringr::str_split(string, pattern = "")
    nInterval = n - 2
    nTotal = n + nInterval
    
    sapply(strs, function(s){
        nc = (n-1) * (nchar(s) %/% nTotal) + (nchar(s) %% n) + 1
        df = matrix(data = NA, nrow = n, ncol = nc)
        for (i in 1:length(s)){
            rx = ifelse((i %% nTotal <= n) & (i %% nTotal > 0), i %% nTotal,  
                        ifelse(i %% nTotal == 0, 2, n - (i %% nTotal) %% n ))
            ry = ifelse((i %% nTotal <= n) & (i %% nTotal > 0), 
                        (n-1) * (i %/% nTotal) + i %% n + 1)
        }
    })
}
