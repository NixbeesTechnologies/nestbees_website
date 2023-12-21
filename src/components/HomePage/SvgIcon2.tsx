import { memo, SVGProps } from 'react';

const SvgIcon2 = (props: SVGProps<SVGSVGElement>) => (
  <svg preserveAspectRatio='none' viewBox='0 0 107 105' fill='none' xmlns='http://www.w3.org/2000/svg' {...props}>
    <path
      d='M3.30005 87.7L24.4 102.1C34.5 93.9 43 83 49.5 69.7C56 56.3 59.4 42.7 59.5 29.3V3H22.7001V32.1C22.5001 41.8 20.7 51.4 17.5 60.7C14.3 69.9 9.50005 79 3.30005 87.7Z'
      stroke='#000001'
      strokeWidth={0.5}
    />
    <path
      d='M48 87.7L69.1 102.1C79.2 93.9 87.7 83 94.2 69.7C100.7 56.3 104.1 42.7 104.2 29.3V3H67.4V32.1C67.2 41.8 65.5 51.5 62.2 60.7C59 69.9 54.2 79 48 87.7Z'
      stroke='#000001'
      strokeWidth={0.5}
    />
  </svg>
);
const Memo = memo(SvgIcon2);
export { Memo as SvgIcon2 };
