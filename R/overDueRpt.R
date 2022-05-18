#' 用户新增UI
#'
#' @param tabTitle 标签名称
#' @param colTitles 列名
#' @param widthRates 比例
#' @param func_left 函数
#' @param func_right 函数
#'
#' @return 返回值
#' @export
#'
#' @examples
#' saleOverdueRptUI()
saleOverdueRptUI <- function(tabTitle ='业务应收逾期报表',
                      colTitles =c('操作区域','报表区域'),
                      widthRates =c(4,8),
                      func_left = saleOverdueRptFunc_left,
                      func_right =saleOverdueRptFunc_right) {
  res = uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
  return(res)
}

#' 用户新增操作区
#'
#' @return 返回值
#' @import shiny
#' @import tsui
#'
#' @examples
#' saleOverdueRptFunc_left()
saleOverdueRptFunc_left<- function() {

  res <- tagList(
    tsui::mdl_date(id = 'saleOverdueRpt_queryDate_date',label = '查询日期'),
    shinyWidgets::actionBttn(inputId = 'saleOverdueRpt_upload_btn',label = '查询报表'),
    tsui::mdl_download_button(id ='saleOverdueRpt_upload_btn',label = '下载报表' )


  )
  return(res)

}






#' 请输入文件
#'
#' @return 返回值
#' @import tsui
#' @import shiny
#'
#' @examples
#' saleOverdueRptFunc_right()
saleOverdueRptFunc_right<- function() {

  res <- tagList(

    uiScrollX(mdl_dataTable(id = 'saleOverdueRpt_query_dataview',label = '业务应收报表'))
  )
  return(res)

}



