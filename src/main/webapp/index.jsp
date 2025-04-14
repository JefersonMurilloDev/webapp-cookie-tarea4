<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tarea 4: Cambiar color</title>
    <style>
        /* Estilo opcional para mejorar la apariencia */
        body { font-family: sans-serif; }
        .color-form label { display: block; margin-bottom: 5px; }
        .color-form select { margin-bottom: 10px; padding: 5px; }
        .color-form button { padding: 8px 15px; }
        .content-text {
             /* Estilo dinámico para el párrafo, usa el mismo valor de la cookie */
             color: ${not empty cookie.color ? cookie.color.value : 'black'};
        }
    </style>
</head>
<body>

    <%--
        El título H3 usa Expression Language (EL) para leer el valor de la cookie llamada 'color'.
        Si la cookie existe, se usa su valor para el estilo CSS 'color'.
        Se agrega una verificación (not empty) para evitar errores si la cookie no existe la primera vez.
        Si no existe, se podría poner un color por defecto o dejarlo sin estilo inline.
    --%>
    <h3 style="color: ${not empty cookie.color ? cookie.color.value : 'black'};">
        Tarea 4: cambiar el color de los textos
    </h3>

    <%--
        Párrafo que también cambiará de color según la cookie.
        Usamos una clase CSS y aplicamos el color allí para mostrar otra forma.
        Alternativamente, podrías usar style inline como en el h3:
        <p style="color: ${not empty cookie.color ? cookie.color.value : 'black'};">...</p>
    --%>
    <p class="content-text">
        Hola este es un texto que cambia de color según las opciones.
    </p>

    <hr>

    <%--
        Formulario para enviar el color seleccionado al Servlet.
        - method="get": Los datos se envían en la URL.
        - action: Especifica la URL del servlet que procesará la petición.
                  Asegúrate que coincida con el mapeo del servlet.
                  Usamos EL para construir la URL relativa al contexto de la aplicación.
    --%>
    <form method="get" action="${pageContext.request.contextPath}/cambiar-color" class="color-form">
        <label for="color">Cambiar color:</label>
        <select name="color" id="color">
            <option value="blue">Azul</option>
            <option value="red">Rojo</option>
            <option value="green">Verde</option>
            <option value="aqua">Aqua</option>
            <option value="blueviolet">Violeta</option> <option value="gray">Gris</option>
            <option value="cyan">Cyan</option>
        </select>
        <button type="submit">Cambiar</button>
    </form>

</body>
</html>