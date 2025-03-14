<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Template for the root element -->
    <xsl:template match="/">
        <html>
            <head>
                <title>ACTIVITY 2: Building My Special Recipe Website</title>
                <style>
                    body { font-family: Arial, sans-serif; }
                    .recipe { margin-bottom: 20px; padding: 20px; border: 1px solid #ddd; border-radius: 5px; }
                    .recipeTitle { font-size: 25px; font-weight: bold;}
                    .instruction { margin-left: 20px; font-style: italic; }
                    ol,ul { margin-left: 20px; }
                    h2 {font-size: 18px;}
                </style>
            </head>
            <body>
                <xsl:for-each select="recipes/recipe">
                    <div class="recipe">
                        <h1 class="recipeTitle">
                            <xsl:value-of select="recipeTitle"/>
                        </h1>
                        <img src="{image}" alt="{recipeTitle}" width="200"/>
                        <h2>Ingredients:</h2>
                        <ul class="ingredients">
                            <xsl:for-each select="ingredients/ingredient">
                                <li>
                                    <xsl:value-of select="."/>
                                </li>
                            </xsl:for-each>
                        </ul>
                        <h2>Instructions:</h2>
                        <ol class="instruction">
                            <xsl:for-each select="cookingInstructions/instruction">
                                <li>
                                    <xsl:value-of select="."/>
                                </li>
                            </xsl:for-each>
                        </ol>
                    </div>
                </xsl:for-each>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
