import { memo } from 'react';
import type { FC } from 'react';

import resets from '../_resets.module.css';
import { ArticleLinkSvgIcon2 } from './ArticleLinkSvgIcon2.js';
import { ArticleLinkSvgIcon3 } from './ArticleLinkSvgIcon3.js';
import { ArticleLinkSvgIcon4 } from './ArticleLinkSvgIcon4.js';
import { ArticleLinkSvgIcon } from './ArticleLinkSvgIcon.js';
import { ButtonNextSlideSvgIcon2 } from './ButtonNextSlideSvgIcon2.js';
import { ButtonNextSlideSvgIcon } from './ButtonNextSlideSvgIcon.js';
import { Footer } from './Footer/Footer';
import classes from './HomePage.module.css';
import { LinkSvgIcon } from './LinkSvgIcon.js';
import { RsArrowSvgIcon2 } from './RsArrowSvgIcon2.js';
import { RsArrowSvgIcon } from './RsArrowSvgIcon.js';
import { SvgIcon2 } from './SvgIcon2.js';
import { SvgIcon3 } from './SvgIcon3.js';
import { SvgIcon } from './SvgIcon.js';

interface Props {
  className?: string;
}
/* @figmaId 403:2 */
export const HomePage: FC<Props> = memo(function HomePage(props = {}) {
  return (
    <div className={`${resets.storybrainResets} ${classes.root}`}>
      <div className={classes.mainSectionRsFullwidthWrapRsMo}>
        <div className={classes.rsModule}>
          <div className={classes.rsSlidesRsSlide}>
            <div className={classes.rsSbgPxRsSbgWrapRsSbgImage}></div>
            <div className={classes.rsLayerWrapRsMaskWrapRsLayer}>
              <div className={classes.modernHomesWithModernSolutions}>
                <div className={classes.textBlock}>Modern Homes </div>
                <div className={classes.textBlock2}>with Modern Solutions</div>
              </div>
            </div>
          </div>
          <div className={classes.rsArrowSVG}>
            <RsArrowSvgIcon className={classes.icon} />
          </div>
          <div className={classes.rsBulletsRsBullet}></div>
          <div className={classes.rsArrowSVG2}>
            <RsArrowSvgIcon2 className={classes.icon2} />
          </div>
        </div>
      </div>
      <div className={classes.mainSectionSectionH1Img1Jpg}></div>
      <div className={classes.mainSectionSectionHeading6Hand}>Handmade &amp; new</div>
      <div className={classes.mainSectionSectionHeading2Expe}>
        <div className={classes.textBlock3}>Experience custom</div>
        <div className={classes.textBlock4}>made automation</div>
      </div>
      <div className={classes.mainSectionSectionLoremIpsumDo}>
        <div className={classes.textBlock5}>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</div>
        <div className={classes.textBlock6}>sed do eiusmod tempor incididunt ut labore et dolore</div>
        <div className={classes.textBlock7}>magna aliqua. Enim ut sem viverra aliquet eget sit amet.</div>
        <div className={classes.textBlock8}>Nunc scelerisque viverra.</div>
      </div>
      <div className={classes.mainSectionSectionHeading6Onli}>Online store</div>
      <div className={classes.mainSectionSectionHeading2Meet}>Watt perfection lighting</div>
      <div className={classes.mainSectionSection}></div>
      <div className={classes.mainSectionSectionLoremIpsumDo2}>
        <div className={classes.textBlock9}>Lorem ipsum dolor sit amet, consectetur adipiscing elit,</div>
        <div className={classes.textBlock10}>sed do eiusmod tempor incididunt ut labore et dolore</div>
        <div className={classes.textBlock11}>magna aliqua. Enim ut sem viverra aliquet eget sit amet.</div>
        <div className={classes.textBlock12}>Nunc scelerisque viverra.</div>
      </div>
      <div className={classes.mainSectionSectionH1Img2Jpg}>
        <div className={classes.image2}></div>
      </div>
      <div className={classes.mainSection}>
        <div className={classes.divQodefShortcode}>
          <div className={classes.shopSliderImg1Jpg}></div>
          <div className={classes.heading5LinkBarStool}>Bar Stool</div>
          <div className={classes.linkSpecial}>Special</div>
          <div className={classes.shopSliderImg2Jpg}></div>
          <div className={classes.heading5LinkCupHolder}>Cup Holder</div>
          <div className={classes.linkSpecial2}>Special</div>
          <div className={classes.shopSliderImg3Jpg}></div>
          <div className={classes.heading5LinkCoffeeSet}>Coffee Set</div>
          <div className={classes.linkSpecial3}>Special</div>
          <div className={classes.shopSliderImg4Jpg}></div>
          <div className={classes.heading5LinkPlatesSet}>Plates Set</div>
          <div className={classes.linkSpecial4}>Special</div>
        </div>
        <div className={classes.heading6BrowseAllOurProducts}>Browse All Our Products</div>
        <div className={classes.heading3ThisYearSBest}>
          <div className={classes.textBlock13}>This year’s best</div>
          <div className={classes.textBlock14}>selling items</div>
        </div>
        <div className={classes.loremIpsumDolorSitAmetCoOreEtD}>
          <div className={classes.textBlock15}>Lorem ipsum dolor sit amet, co</div>
          <div className={classes.textBlock16}>ore et dolore ma enim.</div>
        </div>
        <div className={classes.listItem}>$</div>
        <div className={classes.listItemFurniture}>Furniture</div>
        <div className={classes.listItem2}>$</div>
        <div className={classes.listItemNaturalProducts}>Natural products</div>
        <div className={classes.listItem3}>$</div>
        <div className={classes.listItemWoodPicks}>Wood picks</div>
        <div className={classes.listItem4}>$</div>
        <div className={classes.listItemEssentials}>Essentials</div>
        <button className={classes.buttonPreviousSlide}>
          <div className={classes.sVG}>
            <SvgIcon className={classes.icon3} />
          </div>
        </button>
        <div className={classes.buttonNextSlideSVG}>
          <ButtonNextSlideSvgIcon className={classes.icon4} />
        </div>
      </div>
      <div className={classes.mainSection2}>
        <div className={classes.sVG2}>
          <SvgIcon2 className={classes.icon5} />
        </div>
        <div className={classes.heading6KevinSundstrom}>Kevin Sundström - </div>
        <div className={classes.heading6Coordinator}>Coordinator</div>
        <div className={classes.heading2ScelerisqueViverraMaur}>
          <div className={classes.textBlock17}>Scelerisque viverra mauris in aliquam sem.</div>
          <div className={classes.textBlock18}>Ornareusisa suspendisse sed nis.</div>
        </div>
        <div className={classes.buttonGoToSlide1}></div>
      </div>
      <div className={classes.mainSectionArticleLink}>
        <div className={classes.h1Port1Img1Jpg}></div>
      </div>
      <div className={classes.mainSectionArticleHeading4Link}>View our best selling items</div>
      <div className={classes.mainSectionArticleLoremIpsumDo}>
        <div className={classes.textBlock19}>Lorem ipsum dolor sit amet, suminus</div>
        <div className={classes.textBlock20}>ore et dolore ma enim.</div>
      </div>
      <div className={classes.mainSectionArticleLink2}>
        <div className={classes.viewMore}>View More</div>
      </div>
      <div className={classes.mainSectionArticleLink3}>
        <div className={classes.shopCategoryImg1Jpg}></div>
      </div>
      <div className={classes.mainSectionArticleHeading5Ligh}>Lighting</div>
      <div className={classes.mainSectionArticleLoremIpsumDo2}>Lorem ipsum dolor</div>
      <div className={classes.mainSectionArticleLink4}>
        <div className={classes.shopCategoryImg2Jpg}></div>
      </div>
      <div className={classes.mainSectionArticleHeading5Deco}>Decoration</div>
      <div className={classes.mainSectionArticleLoremIpsumDo3}>Lorem ipsum dolor</div>
      <div className={classes.mainSectionArticleLink5}>
        <div className={classes.shopCategoryImg3Jpg}></div>
      </div>
      <div className={classes.mainSectionArticleHeading5Dinn}>Dinnerware</div>
      <div className={classes.mainSectionArticleLoremIpsumDo4}>Lorem ipsum dolor</div>
      <div className={classes.mainSection3}>
        <div className={classes.divQodefShortcode2}>
          <div className={classes.articleHeading4LinkSeeInsideTh}>
            <div className={classes.textBlock21}>See inside the new art</div>
            <div className={classes.textBlock22}>filled offices of Umeå</div>
            <div className={classes.textBlock23}>pottery studio &amp; house</div>
          </div>
          <div className={classes.article}>
            <div className={classes.loremIpsumDolorSitAmetConsecte}>
              <div className={classes.textBlock24}>Lorem ipsum dolor sit amet, consectetur</div>
              <div className={classes.textBlock25}>adipiscing elit, sed do eiusmod tempor</div>
              <div className={classes.textBlock26}>incididunt ut labore et dolore magna</div>
            </div>
          </div>
          <div className={classes.articleLinkInterior}>Interior</div>
          <div className={classes.articleOn}>on 26.11.2020</div>
          <div className={classes.articleLinkSVG}>
            <ArticleLinkSvgIcon className={classes.icon6} />
          </div>
          <div className={classes.articleHeading4LinkWhatIsItAbo}>
            <div className={classes.textBlock27}>What is it about Danish</div>
            <div className={classes.textBlock28}>furnishings that makes</div>
            <div className={classes.textBlock29}>them feel so timeless?</div>
          </div>
          <div className={classes.article2}>
            <div className={classes.loremIpsumDolorSitAmetConsecte2}>
              <div className={classes.textBlock30}>Lorem ipsum dolor sit amet, consectetur</div>
              <div className={classes.textBlock31}>adipiscing elit, sed do eiusmod tempor</div>
              <div className={classes.textBlock32}>incididunt ut labore et dolore magna</div>
            </div>
          </div>
          <div className={classes.articleLinkInterior2}>Interior</div>
          <div className={classes.articleOn2}>on 26.11.2020</div>
          <div className={classes.articleLinkSVG2}>
            <ArticleLinkSvgIcon2 className={classes.icon7} />
          </div>
          <div className={classes.articleHeading4LinkPromotingTh}>
            <div className={classes.textBlock33}>Promoting the subtle</div>
            <div className={classes.textBlock34}>material palette with the</div>
            <div className={classes.textBlock35}>addition of vibrant colors</div>
          </div>
          <div className={classes.article3}>
            <div className={classes.loremIpsumDolorSitAmetConsecte3}>
              <div className={classes.textBlock36}>Lorem ipsum dolor sit amet, consectetur</div>
              <div className={classes.textBlock37}>adipiscing elit, sed do eiusmod tempor</div>
              <div className={classes.textBlock38}>incididunt ut labore et dolore magna</div>
            </div>
          </div>
          <div className={classes.articleLinkInterior3}>Interior</div>
          <div className={classes.articleOn3}>on 26.11.2020</div>
          <div className={classes.articleLinkSVG3}>
            <ArticleLinkSvgIcon3 className={classes.icon8} />
          </div>
          <div className={classes.articleHeading4LinkTheMenuSpac}>
            <div className={classes.textBlock39}>The menu space New</div>
            <div className={classes.textBlock40}>York showroom designed</div>
            <div className={classes.textBlock41}>by Hilary Robertson</div>
          </div>
          <div className={classes.article4}>
            <div className={classes.loremIpsumDolorSitAmetConsecte4}>
              <div className={classes.textBlock42}>Lorem ipsum dolor sit amet, consectetur</div>
              <div className={classes.textBlock43}>adipiscing elit, sed do eiusmod tempor</div>
              <div className={classes.textBlock44}>incididunt ut labore et dolore magna</div>
            </div>
          </div>
          <div className={classes.articleLinkInterior4}>Interior</div>
          <div className={classes.articleOn4}>on 26.11.2020</div>
          <div className={classes.articleLinkSVG4}>
            <ArticleLinkSvgIcon4 className={classes.icon9} />
          </div>
        </div>
        <div className={classes.heading6InteriorDecorStories}>Interior Decor Stories</div>
        <div className={classes.heading3NewsUpdates}>News &amp; updates</div>
        <div className={classes.loremIpsumDolorSitAmetCoOreEtD2}>
          <div className={classes.textBlock45}>Lorem ipsum dolor sit amet, co</div>
          <div className={classes.textBlock46}>ore et dolore main.</div>
        </div>
        <div className={classes.divQodefMLine}></div>
        <button className={classes.buttonPreviousSlide2}>
          <div className={classes.sVG3}>
            <SvgIcon3 className={classes.icon10} />
          </div>
        </button>
        <div className={classes.buttonNextSlideSVG2}>
          <ButtonNextSlideSvgIcon2 className={classes.icon11} />
        </div>
      </div>
      <Footer />
      <div className={classes.header}>
        <div className={classes.navigationTopMenuListItemLinkP}>Nestbees</div>
        <div className={classes.navigationTopMenuListItemLinkS}>Lighting</div>
        <div className={classes.navigationTopMenuListItemLinkP2}>Portfolio</div>
        <div className={classes.navigationTopMenuListItemLinkB}>Blog</div>
        <div className={classes.linkSearch}>Search</div>
        <div className={classes.linkSVG}>
          <LinkSvgIcon className={classes.icon12} />
        </div>
        <div className={classes.image1}></div>
      </div>
      <div className={classes.divQodefTopArea}>
        <div className={classes.linkUmeaQodeinteractiveCom}>umea@qodeinteractive.com / +663 155 9852</div>
        <div className={classes.oPENFROM9AMTO5PMCLOSEDONWEEKEN}>OPEN FROM 9AM TO 5PM – CLOSED ON WEEKENDS</div>
      </div>
    </div>
  );
});
