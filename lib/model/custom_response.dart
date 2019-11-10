class CustomResult<T> {
  final int resultCode;
  final String message;
  final T data;
  final String errorMessage;
  final int errorCode;

  CustomResult(this.resultCode, this.message, this.data, this.errorMessage,
      this.errorCode);

  CustomResult.data(T data)
      :
        this.data = data,
        resultCode = 0,
        message = "",
        errorCode = -1,
        errorMessage = "";

  CustomResult.error(int errorCode, String errorMessage)
      : this(-1, "", null, errorMessage, errorCode);

}