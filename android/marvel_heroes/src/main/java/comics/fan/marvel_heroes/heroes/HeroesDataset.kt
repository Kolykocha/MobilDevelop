package comics.fan.marvel_heroes.heroes

import androidx.core.graphics.toColorInt
import comics.fan.marvel_heroes.R
import comics.fan.marvel_heroes.heroes.model.Hero

class HeroesDataset {

    fun getHeroes(): List<Hero> = listOf(
        Hero(1, "Scarlet Spider", R.drawable.ss, "#39b4bc".toColorInt()),
        Hero(2, "Gwen Spider", R.drawable.gp, "#5c3a77".toColorInt()),
        Hero(3, "Magik", R.drawable.magik, "#edc93f".toColorInt()),
        Hero(4, "Knull", R.drawable.knull, "#65d6da".toColorInt())
)

}