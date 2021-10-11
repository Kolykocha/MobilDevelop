package comics.fan.marvel_heroes

import android.animation.ArgbEvaluator
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import comics.fan.marvel_heroes.R
import comics.fan.marvel_heroes.heroes.adapter.HeroAdapter
import comics.fan.marvel_heroes.heroes.HeroesDataset
import comics.fan.marvel_heroes.heroes.model.Hero
import com.yarolegovich.discretescrollview.DiscreteScrollView
import com.yarolegovich.discretescrollview.transform.Pivot
import com.yarolegovich.discretescrollview.transform.ScaleTransformer
import kotlin.math.abs


class MainActivity : AppCompatActivity(),
    DiscreteScrollView.OnItemChangedListener<HeroAdapter.HeroHolder>,
    DiscreteScrollView.ScrollListener<HeroAdapter.HeroHolder> {
    private val heroes = HeroesDataset().getHeroes()
    private var evaluator: ArgbEvaluator? = null


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        evaluator = ArgbEvaluator()

        val heroesScrollView = findViewById<DiscreteScrollView>(R.id.picker)

        heroesScrollView.adapter = HeroAdapter(heroes)
        heroesScrollView.addOnItemChangedListener(this)
        heroesScrollView.addScrollListener(this)
        heroesScrollView.setItemTransformer(
            ScaleTransformer.Builder()
                .setMinScale(0.85f)
                .setMaxScale(1f)
                .setPivotX(Pivot.X.CENTER)
                .setPivotY(Pivot.Y.CENTER)
                .build()
        )

    }


    override fun onScroll(
        scrollPosition: Float,
        currentPosition: Int,
        newPosition: Int,
        currentHolder: HeroAdapter.HeroHolder?,
        newCurrent: HeroAdapter.HeroHolder?
    ) {
        val prevHero = heroes[currentPosition]
        val hero = heroes[newPosition]
    }

    private fun interpolate(fraction: Float, elem1: Int, elem2: Int): Int {
        return evaluator?.evaluate(fraction, elem1, elem2) as Int
    }
}