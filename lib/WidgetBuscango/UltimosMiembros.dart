import 'package:flutter/material.dart';

class UltimosMiembros extends StatelessWidget {
  int numero = 0;
  UltimosMiembros(int i) {
    this.numero = i;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.55,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) =>
                    _tarjetaExpositor()),
          ),
        ],
      ),
    );
  }
}

class _tarjetaExpositor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.2,
      height: size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.blueGrey[100],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 5,
            offset: Offset(7, 7),
            blurRadius: 6,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 65, vertical: 15),
      child: Column(
        children: [
          Imagen(size),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: ContenedorTextos(size),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: ContenedorTag(size),
          )
        ],
      ),
    );
  }

  Widget Imagen(final size) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        width: size.width * 0.2,
        height: size.height * 0.3,
        child: FadeInImage(
          placeholder: AssetImage(
              'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAe1BMVEX///8AAADX19fx8fE4ODi4uLi8vLwXFxdPT0/FxcX5+fmHh4fm5ubi4uKMjIz09PRvb29DQ0OYmJh1dXVaWlrOzs7b29uCgoJKSkrk5OQ+Pj5hYWHr6+vLy8ulpaUzMzMqKioeHh4LCwt7e3uwsLChoaElJSVUVFQaGhrhJeGEAAAFGUlEQVR4nO2Y65aqOBCFAQUBIXIXBW946fP+TzhQISHBXt1ti2ecWfv7xaWS1CZJVQXDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/0VmVkvxyhGKboTZK0f4GsdcLJr4lQ6cFouF6bxwgG+wzZb5KxV2A0DhKyGFh/+zwl3sumW0euEI/7bC1/N3FdaBY3vBl2tyFuxsp6g/feM4sq1fF7YVfDL3deDZhfpirNCvA2sXfO3Eb9mlNxrusB4EWEvGWCIdCpMDmZzSnTRZdxa+wd/clvTMy8is3Pc2Aeto259P9CJmssuRwn3W0JN5Ek6tLyzNAeb3TynSHPsP6qeKSRYoLh6KRjw/FYYfSau+qUU3BlPaXz5TeFEMzFQ4MQ27hdq56aoK+2wRfGgmh3xw8XQYnpdGpFh90GRZC5pfrX1yr/CsGZgfgTEdhTmiulPox2ObenBRJbsXQgqbkZ03VpiMeyqnm8UZ34HVPtzkaz6b67HCih5vE2tTXLd0Hfuqwoilg4b5kvVCKZlacoVkjJ1v/XWgK7SFyZJVjfadJ2CtfEkj5JOV6wpzerjkX3XF19N+UDjvyvNa7OUuNvn5Qk6VUOiGXftZonxEOXI95yZ5a+IH3CMzn0oh9Wbrt5GukDYXkyZ0O19JhXzLhH+Gpm1clN73CiPR2qPbY60q5FEmEwsz0Vs8yUV+0c6bS7/hNIV1dyH2RW3zJUueacuJR1tx3KKbq1QY+/qIQ/Pu4igH5fB49Vnm/QUU5Cj/BPtMbhlHVejQ4utMZk51FCapMZp/8vwk3KIIu5QKL8qQpnilS90PFqF88zx+FxQWMyNIKnMgDVWFlMraLXVJlbSSecIzr+9KP4u4ukI1MtJku4pCSpkLa7BY0aZmxhTMum/dsOPgesyskce0Zs7uYHJM+yn5uUJ1TE+sSaHQ0VrKjzDNRpxtTZV4XXShMMhVj1PN5BB5nS/17tcKnU8Vaue083QKfXVxspwC+jWjBSI9VuuRyCFH7KiRLj6skPqbG6NVelJ+Cfkf061SWS+6rB+BPp+teuyJxbnu9z49kJHmRwrvIk1kjCONYlJoHT8JryYieahZUfJdGeNsYW6Hv2KR5tmPFJbDGuTZwlYVUuD9MzjFs8VUpSl1VspbmtNY95gGPEofaVHdgocUmmfROqT7xlIV8vogFSZXuq2mqkz7AoJ75vO7UdXW1+aBooRvkgcUmiXtAp97z9VIhSt+PtnSyXPyqs3nBeU22QQFi+Ue0TzmpejpbAUbm2cN/vwRhWbzsWaRCN0bTaGsvN2qyvrifLrKuz+iKmxnY4/vT088Zz6kUOUyNOfRKx1bHNXk8bTEky6wvvd4pR/8ml7VzxXq7ZnSvI/PkWZgxtP+4wuU7puz6Fv3eKlWbKLAulco83apKwyVpHqz1ebyL8ZtsDCjaf9itOTidBcNeXf0z7voA4BZDhXx3G0REUH/v3ou27u9VLgxLLHSmTwzZG3rWGa9OhEaz5MFGV2k4zjaP677ajG0HWdnPEg/h93lznHszVe2K2/sxEuhxOE+vR8UhW8Gj5/p94bf8K4K8z2PLNene3pXhSK6P5+V3lVhpSWuZ3hrhYfL94bfwkum91OYVBXbTVI4+UHLZvIMDgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwGv5B5iXOMnxpywgAAAAAElFTkSuQmCC'),
          image: NetworkImage(
              'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAe1BMVEX///8AAADX19fx8fE4ODi4uLi8vLwXFxdPT0/FxcX5+fmHh4fm5ubi4uKMjIz09PRvb29DQ0OYmJh1dXVaWlrOzs7b29uCgoJKSkrk5OQ+Pj5hYWHr6+vLy8ulpaUzMzMqKioeHh4LCwt7e3uwsLChoaElJSVUVFQaGhrhJeGEAAAFGUlEQVR4nO2Y65aqOBCFAQUBIXIXBW946fP+TzhQISHBXt1ti2ecWfv7xaWS1CZJVQXDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/0VmVkvxyhGKboTZK0f4GsdcLJr4lQ6cFouF6bxwgG+wzZb5KxV2A0DhKyGFh/+zwl3sumW0euEI/7bC1/N3FdaBY3vBl2tyFuxsp6g/feM4sq1fF7YVfDL3deDZhfpirNCvA2sXfO3Eb9mlNxrusB4EWEvGWCIdCpMDmZzSnTRZdxa+wd/clvTMy8is3Pc2Aeto259P9CJmssuRwn3W0JN5Ek6tLyzNAeb3TynSHPsP6qeKSRYoLh6KRjw/FYYfSau+qUU3BlPaXz5TeFEMzFQ4MQ27hdq56aoK+2wRfGgmh3xw8XQYnpdGpFh90GRZC5pfrX1yr/CsGZgfgTEdhTmiulPox2ObenBRJbsXQgqbkZ03VpiMeyqnm8UZ34HVPtzkaz6b67HCih5vE2tTXLd0Hfuqwoilg4b5kvVCKZlacoVkjJ1v/XWgK7SFyZJVjfadJ2CtfEkj5JOV6wpzerjkX3XF19N+UDjvyvNa7OUuNvn5Qk6VUOiGXftZonxEOXI95yZ5a+IH3CMzn0oh9Wbrt5GukDYXkyZ0O19JhXzLhH+Gpm1clN73CiPR2qPbY60q5FEmEwsz0Vs8yUV+0c6bS7/hNIV1dyH2RW3zJUueacuJR1tx3KKbq1QY+/qIQ/Pu4igH5fB49Vnm/QUU5Cj/BPtMbhlHVejQ4utMZk51FCapMZp/8vwk3KIIu5QKL8qQpnilS90PFqF88zx+FxQWMyNIKnMgDVWFlMraLXVJlbSSecIzr+9KP4u4ukI1MtJku4pCSpkLa7BY0aZmxhTMum/dsOPgesyskce0Zs7uYHJM+yn5uUJ1TE+sSaHQ0VrKjzDNRpxtTZV4XXShMMhVj1PN5BB5nS/17tcKnU8Vaue083QKfXVxspwC+jWjBSI9VuuRyCFH7KiRLj6skPqbG6NVelJ+Cfkf061SWS+6rB+BPp+teuyJxbnu9z49kJHmRwrvIk1kjCONYlJoHT8JryYieahZUfJdGeNsYW6Hv2KR5tmPFJbDGuTZwlYVUuD9MzjFs8VUpSl1VspbmtNY95gGPEofaVHdgocUmmfROqT7xlIV8vogFSZXuq2mqkz7AoJ75vO7UdXW1+aBooRvkgcUmiXtAp97z9VIhSt+PtnSyXPyqs3nBeU22QQFi+Ue0TzmpejpbAUbm2cN/vwRhWbzsWaRCN0bTaGsvN2qyvrifLrKuz+iKmxnY4/vT088Zz6kUOUyNOfRKx1bHNXk8bTEky6wvvd4pR/8ml7VzxXq7ZnSvI/PkWZgxtP+4wuU7puz6Fv3eKlWbKLAulco83apKwyVpHqz1ebyL8ZtsDCjaf9itOTidBcNeXf0z7voA4BZDhXx3G0REUH/v3ou27u9VLgxLLHSmTwzZG3rWGa9OhEaz5MFGV2k4zjaP677ajG0HWdnPEg/h93lznHszVe2K2/sxEuhxOE+vR8UhW8Gj5/p94bf8K4K8z2PLNene3pXhSK6P5+V3lVhpSWuZ3hrhYfL94bfwkum91OYVBXbTVI4+UHLZvIMDgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwGv5B5iXOMnxpywgAAAAAElFTkSuQmCC'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget ContenedorTextos(Size size) {
    return Container(
      width: size.width * 0.18,
      height: size.height * 0.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 3, horizontal: 25),
            width: size.width * 1,
            height: size.height * 0.03,
            child: Text(
              'NOMBRE TIENDA',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Roboto-Bold'),
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            width: size.width * 1,
            height: size.height * 0.03,
            child: Row(
              children: [
                Icon(Icons.car_repair_rounded),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Categoría',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Roboto-Bold'),
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 3, horizontal: 35),
            width: size.width * 1,
            height: size.height * 0.03,
            child: Row(
              children: [
                Icon(Icons.gps_fixed),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Ubicación',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Roboto-Bold'),
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  ContenedorTag(Size size) {
    double ancho = size.width;
    return Container(
      width: size.width * 0.2,
      height: size.height * 0.04,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: size.width * 0.04,
              height: size.height * 0.02,
              color: Colors.blueGrey[300],
              child: Center(
                child: Text(
                  'Tag',
                  style: TextStyle(fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          SizedBox(
            width: ancho * 0.01,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: size.width * 0.04,
              height: size.height * 0.02,
              color: Colors.blueGrey[300],
              child: Center(
                child: Text(
                  'Tag',
                  style: TextStyle(fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          SizedBox(
            width: ancho * 0.01,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: size.width * 0.04,
              height: size.height * 0.02,
              color: Colors.blueGrey[300],
              child: Center(
                child: Text(
                  'Tag',
                  style: TextStyle(fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
