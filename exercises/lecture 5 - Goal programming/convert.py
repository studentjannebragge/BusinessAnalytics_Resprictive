from markitdown import MarkItDown

# Luo MarkItDown-objekti
md = MarkItDown()

# Muunna tiedosto
result = md.convert("ch5_P1computers_solution.xlsx")

# Tallenna tulos .md-tiedostoksi
with open("output.md", "w", encoding="utf-8") as file:
    file.write(result.text_content)

print("Markdown-tiedosto tallennettu tiedostoon output.md")
