package demo.util;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by 高伟冬 on 2017/6/15.
 * library
 * 21:22
 * 星期四
 */
@WebFilter(urlPatterns = "/*")
public class EncodingFilter implements Filter {

    private static final String QWER="UTF-8";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding(QWER);
        response.setCharacterEncoding(QWER);
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }
}
