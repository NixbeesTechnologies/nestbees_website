import { memo, SVGProps } from 'react';

const ArticleLinkSvgIcon2 = (props: SVGProps<SVGSVGElement>) => (
  <svg preserveAspectRatio='none' viewBox='0 0 12 13' fill='none' xmlns='http://www.w3.org/2000/svg' {...props}>
    <g clipPath='url(#clip0_484_55)'>
      <path
        d='M11.797 1.628L0.705019 12.721L0.132019 12.148L10.535 1.745L2.18302 1.746L2.18402 0.936005H11.512C11.674 0.936005 11.825 1.035 11.884 1.186C11.948 1.337 11.913 1.512 11.797 1.628Z'
        fill='black'
      />
      <path
        d='M11.915 10.265L11.108 10.263V2.31801L0.99103 12.435L0.41803 11.861L11.225 1.05501C11.344 0.939007 11.516 0.904007 11.666 0.968007C11.818 1.03001 11.915 1.17801 11.915 1.34101V10.265Z'
        fill='black'
      />
    </g>
    <defs>
      <clipPath id='clip0_484_55'>
        <rect width={12} height={12} fill='white' transform='translate(0 0.850006)' />
      </clipPath>
    </defs>
  </svg>
);
const Memo = memo(ArticleLinkSvgIcon2);
export { Memo as ArticleLinkSvgIcon2 };
